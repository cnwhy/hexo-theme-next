{% macro render(id,format) %}
{% if theme.google_adsense.enabled and id %}
<div class="adbox">
<ins class="adsbygoogle"
    style="display:block; {{format == 'fluid' ? 'text-align:center;' : ''}}"
    data-ad-client="{{theme.google_adsense.google_ad_client}}"
    data-ad-slot="{{id}}"
    data-ad-format="{{format | default('auto')}}"
{% if format === 'fluid' %}
    data-ad-layout="in-article"
{% endif %}
    data-full-width-responsive="true"></ins>
<script>
    (adsbygoogle = window.adsbygoogle || []).push({});
</script>
</div>
{% endif %}
{% endmacro %}
