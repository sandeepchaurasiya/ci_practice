
<!-- Right Panel -->

<script src="<?= base_url(); ?>assets/js/vendor/jquery-2.1.4.min.js" type="2f708fb0c45bce7cda466ed6-text/javascript"></script>
<script src="<?= base_url(); ?>assets/js/popper.min.js" type="2f708fb0c45bce7cda466ed6-text/javascript"></script>
<script src="<?= base_url(); ?>assets/js/plugins.js" type="2f708fb0c45bce7cda466ed6-text/javascript"></script>
<script src="<?= base_url(); ?>assets/js/main.js" type="2f708fb0c45bce7cda466ed6-text/javascript"></script>

<script type="text/javacsript">
    $(document).ready(function () {
        $('#bootstrap-data-table').DataTable();
    });
</script>

<script src="<?= base_url(); ?>assets/js/dashboard.js" type="2f708fb0c45bce7cda466ed6-text/javascript"></script>
<script src="<?= base_url(); ?>assets/js/widgets.js" type="2f708fb0c45bce7cda466ed6-text/javascript"></script>
<script src="<?= base_url(); ?>assets/js/lib/vector-map/jquery.vmap.js" type="2f708fb0c45bce7cda466ed6-text/javascript"></script>
<script src="<?= base_url(); ?>assets/js/lib/vector-map/jquery.vmap.min.js" type="2f708fb0c45bce7cda466ed6-text/javascript"></script>
<script src="<?= base_url(); ?>assets/js/lib/vector-map/jquery.vmap.sampledata.js" type="2f708fb0c45bce7cda466ed6-text/javascript"></script>
<script src="<?= base_url(); ?>assets/js/lib/vector-map/country/jquery.vmap.world.js" type="2f708fb0c45bce7cda466ed6-text/javascript"></script>

<script type="2f708fb0c45bce7cda466ed6-text/javascript">
    ( function ( $ ) {
    "use strict";

    jQuery( '#vmap' ).vectorMap( {
    map: 'world_en',
    backgroundColor: null,
    color: '#ffffff',
    hoverOpacity: 0.7,
    selectedColor: '#1de9b6',
    enableZoom: true,
    showTooltip: true,
    values: sample_data,
    scaleColors: [ '#1de9b6', '#03a9f5' ],
    normalizeFunction: 'polynomial'
    } );
    } )( jQuery );
</script>


<!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-23581568-13" type="2f708fb0c45bce7cda466ed6-text/javascript"></script>

<script src="<?= base_url(); ?>assets/js/rocket-loader.min.js" data-cf-settings="2f708fb0c45bce7cda466ed6-|49" defer=""></script></body>

</html>