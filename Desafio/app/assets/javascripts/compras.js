$("#compra_quantidade").change(function() {
	var idSelecionado = $("select#compra_mercadoria_id").val()
	var mercadoria = $.grep(mercadorias, function(e){ return e.id == idSelecionado; })[0];
	var quantidade = $(this).val();
	$("#compra_preco").val(mercadoria.preco * quantidade);
});