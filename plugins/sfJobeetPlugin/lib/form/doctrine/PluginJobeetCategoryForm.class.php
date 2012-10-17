<?php

/**
 * PluginJobeetCategory form.
 *
 * @package    ##PROJECT_NAME##
 * @subpackage form
 * @author     ##AUTHOR_NAME##
 * @version    SVN: $Id: sfDoctrineFormPluginTemplate.php 23810 2009-11-12 11:07:44Z Kris.Wallsmith $
 */
abstract class PluginJobeetCategoryForm extends BaseJobeetCategoryForm
{
  public function setup()
  {
    parent::setup();

    unset($this['created_at'], $this['updated_at'], $this['jobeet_affiliates_list']);
    
    $this->embedI18n(array('en', 'fr'));
    $this->widgetSchema->setLabel('en', 'English');
    $this->widgetSchema->setLabel('fr', 'French');
  }
}
