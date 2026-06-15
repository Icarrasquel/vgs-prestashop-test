{block name='product_tabs'}
  <section class="vgs-product-info">
    <h2 class="vgs-product-info__title">Información del producto</h2>

    {if $product.description}
      {cms_images_block webpEnabled=$webpEnabled}
      <div class="vgs-product-info__intro cms-content">
        {$product.description nofilter}
      </div>
      {/cms_images_block}
    {/if}

    {if $product.grouped_features}
      <div class="vgs-product-info__list">
        {foreach from=$product.grouped_features item=feature}
          <div class="vgs-product-info__item">
            <span class="vgs-product-info__check">✓</span>
            <div>
              <h3>{$feature.name}</h3>
              <p>{$feature.value|escape:'htmlall'|nl2br nofilter}</p>
            </div>
          </div>
        {/foreach}
      </div>
    {/if}
  </section>
{/block}