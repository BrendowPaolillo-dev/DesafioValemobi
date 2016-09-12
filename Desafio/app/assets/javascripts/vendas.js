$("#venda_quantidade").change(function() {
	var idSelecionado = $("select#venda_mercadoria_id").val()
	var mercadoria = $.grep(mercadorias, function(e){ return e.id == idSelecionado; })[0];
	var quantidade = $(this).val();
	$("#venda_preco").val(mercadoria.preco * quantidade);
});