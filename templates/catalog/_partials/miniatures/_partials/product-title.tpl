{block name='product_name'}
  {$headingTag = 'h2'}
  {if $page.page_name == 'index'}
    {$headingTag = 'h3'}
  {/if}
  <{$headingTag} class="vgs-product-card__title">
    <a href="{$product.url}">{$product.name}</a>
  </{$headingTag}>
{/block}