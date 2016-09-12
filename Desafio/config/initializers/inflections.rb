# Be sure to restart your server when you modify this file.

# Add new inflection rules using the following format. Inflections
# are locale specific, and you may define rules for as many different
# locales as you wish. All of these examples are active by default:
# ActiveSupport::Inflector.inflections(:en) do |inflect|
#   inflect.plural /^(ox)$/i, '\1en'
#   inflect.singular /^(ox)en/i, '\1'
#   inflect.irregular 'person', 'people'
#   inflect.uncountable %w( fish sheep )
# end

# These inflection rules are supported but not enabled by default:
ActiveSupport::Inflector.inflections(:en) do |inflect|
   inflect.irregular 'mercadoria', 'mercadorias'
   inflect.irregular 'vendedor', 'vendedores'

      inflect.irregular 'ItemVenda', 'ItensVenda'
            inflect.irregular 'item_venda', 'itens_venda'
            inflect.irregular 'itemvenda', 'itensvenda'
      inflect.irregular 'ItemCompra', 'ItensCompra'
            inflect.irregular 'item_compra', 'itens_compra'
            inflect.irregular 'itemcompra', 'itenscompra'

 end
