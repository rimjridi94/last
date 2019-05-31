<?php namespace App\Invoicer\Repositories\Eloquent;

use App\Invoicer\Repositories\Contracts\EstimateInterface;

class EstimateRepository extends BaseRepository implements EstimateInterface{


    /**
     * @return string
     */

    public function model() {
        return 'App\Models\Estimate';
    }

    /**
     * @return string
     */
    public function generateEstimateNum($start = 0){
        $estimate = $this->model();
        $last = $estimate::orderBy('increment_num', 'desc')->first();
        if($last){
            $next_id = $last->increment_num+1;
        }else{
            $next_id = 1;
        }
        return $start != $next_id ? $start : $next_id;
    }

    /**
     * @param $id
     * @return array
     */
    public function estimateTotals($id){
        $estimate = $this->with('items')->getById($id);
        $items = $estimate->items;

        $totals     = array();
        $subTotal   = 0;
        $taxTotal   = 0;
        foreach($items as $item){
            $tax = $item->tax;
            $itemTotal = $item->quantity * $item->price*$item->nb_jours;
            $itemTax = $tax ? $itemTotal * $tax->value/100 : 0;
            $totals[$item->uuid]['itemTotal'] = number_format($itemTotal,2);
            $totals[$item->uuid]['tax']       = $itemTax ;
            $subTotal += $itemTotal;
            $taxTotal += $itemTax;
        }
        $totals['subTotal'] = number_format($subTotal, 2);
        $totals['taxTotal'] = number_format($taxTotal, 2);
        $totals['grandTotal'] = number_format($subTotal + $taxTotal+0.6, 2);

       return $totals;
    }
    /**
     * @param $range
     * @return mixed
     */

    public function report($range){
        $invoice = $this->model();
        $stats = $invoice::where('estimate_date', '>=', $range)
            ->groupBy('date')
            ->orderBy('date', 'DESC')
            ->get([
                \DB::raw('Date(estimate_date) as date'),
                \DB::raw('COUNT(*) as value')
            ]);
        return $stats;
    }
}