<div class="row">

    <div class="col-md-12">

        <div class="form-group">

            {!! Form::label('invoice_id', 'Facture'.' *') !!}

            @if(isset($invoice))

                {!! Form::select('invoice_id',array($invoice->uuid => $invoice->number.'( Bal '.$invoice->totals['amountDue'].') | '. $invoice->client->name), $invoice->uuid, ['class' => 'form-control', 'required']) !!}

            @else

                @if(isset($payment->invoice_id)) <strong> {{ $payment->invoice->number }} </strong> @endif

                {!! Form::select('invoice_id',array(), null, ['class' => 'form-control ajaxChosen input-sm', !isset($payment->invoice_id) ? 'required' : '', 'data-placeholder' => 'Tapez au moins 2 caractères du numéro de facture']) !!}

            @endif

        </div>

        <div class="form-group">

            {!! Form::label('payment_date', 'Reçu en') !!}

            {!! Form::text('payment_date', null, ['class' => 'form-control datepicker input-sm', 'required']) !!}

        </div>

        <div class="form-group">

            {!! Form::label('method', 'Methode de Paiement'.'*') !!}

            {!! Form::select('method',$methods, null, ['class' => 'form-control chosen input-sm']) !!}

        </div>

        <div class="form-group">

            {!! Form::label('amount', 'Montant'.'*') !!}

            {!! Form::input('number','amount',null, ['class' => 'form-control input-sm','step'=>'any','min'=>1, 'required']) !!}

        </div>

        <div class="form-group">

            {!! Form::label('notes', 'Commentaires') !!}

            {!! Form::textarea('notes',null, ['class' => 'form-control input-sm', 'rows'=> '5']) !!}

        </div>

    </div>

</div>

<script src="{{ asset('assets/plugins/chosen/chosen.ajaxaddition.jquery.js') }}"></script>

<script type="text/javascript">

    $('.ajaxChosen').ajaxChosen({

        dataType: 'json',

        type: 'POST',

        url:'/search',

        data: {'_token':"{{ csrf_token() }}"}, //Or can be [{'name':'keyboard', 'value':'cat'}]. chose your favorite, it handles both.

        success: function(data, textStatus, jqXHR){  }

    },{

        processItems: function(data){return data;},

        generateUrl: function(q){ return '{{ url("invoices/ajaxSearch") }}' },

        loadingImg: '{{ asset("assets/plugins/chosen/loading.gif") }}',

        minLength: 2

    });

</script>

