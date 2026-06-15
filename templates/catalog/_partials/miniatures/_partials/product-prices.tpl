{block name='product_price_and_shipping'}
  {if $product.show_price}
    <div class="vgs-product-card__price">
      {hook h='displayProductPriceBlock' product=$product type="before_price"}

      <span class="price price--current" aria-label="{l s='Price' d='Shop.Theme.Catalog'}">
        {$product.price}
      </span>

      {if $product.has_discount}
        {hook h='displayProductPriceBlock' product=$product type="old_price"}
        <span class="price price--regular" aria-label="{l s='Regular price' d='Shop.Theme.Catalog'}">
          {$product.regular_price}
        </span>

        <span class="price-discount-badge">
          {$product.discount_percentage}
        </span>
      {/if}

      {hook h='displayProductPriceBlock' product=$product type='unit_price'}
      {hook h='displayProductPriceBlock' product=$product type='weight'}
    </div>
  {/if}
{/block}