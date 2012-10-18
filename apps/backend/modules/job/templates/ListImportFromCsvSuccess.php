<?php use_helper('I18N', 'Date') ?>
<?php include_partial('job/assets') ?>
<div id="sf_admin_container">
    <?php include_partial('job/flashes') ?>
    <div id="sf_admin_content">
        <form action="" enctype="multipart/form-data" method="post" id="sf_admin_content_form">
            <table width='100%' align="center">
                <tr>
                    <td align="center" style="text-align: center">
                        <table width='300' align="center">
                            <caption class="fg-toolbar ui-widget-header ui-corner-top">
                                <h1><?php echo __('Upload Job CSV', array(), 'messages') ?></h1>
                            </caption>
                            <tbody>
                                <tr class="sf_admin_row ui-widget-content">
                                    <td align="center" height="30">
                                        <input type="file" name="csv" />
                                    </td><td align="center" height="30">
                                        <input type="submit" name="submit" value="Import" />
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </td>
                </tr>
            </table>
        </form>
    </div>
</div>
