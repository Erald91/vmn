<?php

use yii\web\View;
use yii\helpers\Html;
use kartik\select2\Select2;
use kartik\date\DatePicker;
use kartik\editable\Editable;
use yii\widgets\ActiveForm;
use humhub\assets\TagAsset;
use humhub\modules\custom_profile\Assets;
use humhub\modules\user\models\ProfileField;
use humhub\modules\user\models\fieldtype\MultiSelect;

Assets::register($this);
TagAsset::register($this);
?>
<div class="container">
    <div class="row">
        <div class="col-md-1"></div>
        <div class="col-md-10">
            <div class="panel panel-default edit-profile-panel">
                <div class="panel-heading">        
                    <strong><?php echo $page_detail->title_line1; ?></strong>                     
                </div>
                <div class="panel-body">            
                    <h5 class="Custom-Profile-head"><?php echo $page_detail->title_line2; ?></h5>
                    <a href="#" alt="user image">

                    </a>
                    <div class="user_response-bg">
                        <?php
                        $form = ActiveForm::begin([
                                    'action' => ['saveprofile'],
                                    'method' => 'post',
                        ]);
                        echo Html::hiddenInput('page_id', $page_id);
                        $tag_indx = 1;
                        foreach ($typ2title as $titlevalue) {
                            $titlenam = $titlevalue->internal_name;
                            $fieldtyp = ProfileField::find()->select(['field_type_class', 'field_type_config', 'description'])->where(['internal_name' => $titlenam])->one();
                            $fieldtype = explode('\\', $fieldtyp->field_type_class);
                            $fieldtypes = $fieldtype[5];
                            ?>

                            <div class="edit-profile-form">

                                <label><?php echo $titlevalue->title; ?></label>
                                <div class="small-text"> <?php echo $fieldtyp->description; ?></div>
                                <?php
                                switch ($fieldtypes) {
                                    case 'Text':
                                        echo $form->field($model, $titlevalue->internal_name)->textInput(['id' => $tag_indx, 'class' => 'form-control enterSubmit', 'value' => $profilefield->$titlenam, 'tabindex' => $tag_indx++,])->label(false);
                                        //echo Html::activeInput('text', $model, $titlevalue->internal_name, ['class' => 'form-control',]);
                                        break;

                                    case 'TextArea':
                                        echo $form->field($model, $titlevalue->internal_name)->textArea(['id' => $tag_indx, 'rows' => '6', 'class' => 'form-control', 'value' => $profilefield->$titlenam, 'tabindex' => $tag_indx++,])->label(false);
                                        //echo $form->textArea($model,'xy',['rows' => '6']);
                                        //echo Html::activeTextarea($model, $titlevalue->internal_name, ['class' => 'form-control', 'value' => $profilefield->$titlenam,]);
                                        break;
                                    case 'Select':
                                        $select_option = '';
                                        $select_item = '';
                                        $select_option = json_decode($fieldtyp->field_type_config, true);
                                        $select_option_data = $select_option['options'];
                                        if (!empty($select_option_data)) {
                                            foreach (explode("\n", $select_option_data) as $option) {
                                                if (strpos($option, "=>") !== false) {
                                                    $option = rtrim($option);
                                                    list($select_key, $select_value) = explode("=>", $option);
                                                    $select_item[$select_key] = $select_value;
                                                } else {
                                                    $select_item[] = $option;
                                                }
                                            }
                                        }
                                        echo $form->field($model, $titlevalue->internal_name)->dropDownList($select_item, ['id' => $tag_indx, 'class' => 'form-control', 'tabindex' => $tag_indx++,])->label(false);
                                        break;
                                    case 'CountrySelect':
                                        $country_name = \app\modules\custom_profile\controllers\DefaultController::list_of_country();
                                        echo $form->field($model, $titlevalue->internal_name)->dropDownList($country_name, ['class' => 'form-control', 'tabindex' => $tag_indx++,])->label(false);
                                        break;
                                    case 'Birthday':

                                        echo $form->field($model, $titlevalue->internal_name)->widget(DatePicker::classname(), [
                                            'value' => '',
                                            'id' => $tag_indx,
                                            'readonly' => true,
                                            'options' => [
                                                'value' => $profilefield->$titlenam,
                                            ],
                                            'pluginOptions' => [
                                                'autoclose' => true,
                                                'tabindex' => $tag_indx++,
                                                'format' => 'yyyy/mm/dd'
                                            ]
                                        ])->label(false);

                                        break;
                                    case 'Date':
                                        echo $form->field($model, $titlevalue->internal_name)->widget(DatePicker::classname(), [
                                            'id' => $tag_indx,
                                            'value' => '',
                                            'readonly' => true,
                                            'options' => [
                                                'value' => $profilefield->$titlenam,
                                            ],
                                            'pluginOptions' => [
                                                'autoclose' => true,
                                                'tabindex' => $tag_indx++,
                                                'format' => 'yyyy/mm/dd'
                                            ]
                                        ])->label(false);
                                        break;
                                    case 'Tags':
                                        echo $form->field($model, $titlevalue->internal_name)->textInput(['id' => $tag_indx, 'value' => $profilefield->$titlenam, 'data-role' => 'tagsinput', 'tabindex' => $tag_indx++,])->label(false);
                                        break;
                                    case 'MultiSelectDropdown':
                                        $multiselect_option = '';
                                        $special = ":;,.#$&@!^*?";
                                        //$items = '';
                                        //$item_option = '';
                                        //$new_array = array();
                                        $item = array();
                                        $item_option = array();
                                        $key = 'Category';
                                        $multiselect_option = json_decode($fieldtyp->field_type_config, true);
                                        $item_maxlength = $multiselect_option['Max_selection_length'];
                                        //print_r($multiselect_option); exit();
                                        foreach (explode("\n", $multiselect_option['options']) as $option) {

                                            /* if (strpos($option, "|") !== false) {
                                              list($key, $value) = explode("|", $option);
                                              if (strpos($value, ",") !== false) {
                                              $eachtitle = explode(",", $value);
                                              $eachtitle = array_filter($eachtitle);
                                              foreach ($eachtitle as $k => $v) {
                                              $tmp = $key . '_' . $v;
                                              $new_array[$tmp] = $v;
                                              }

                                              } else {
                                              $eachtitle = $value;
                                              }
                                              $items[trim($key)] = $new_array;
                                              unset($new_array);
                                              } else {
                                              $items[] = $option;
                                              } */
                                            if (strpos($option, "|") !== false) {
                                                $item[trim(trim(str_replace(',', '-', $key)), $special)] = $item_option;
                                                if (!empty(trim(trim(str_replace('|', '', $option)), $special))) {
                                                    $key = str_replace('|', '', $option);
                                                }
                                                unset($item_option);
                                                $item_option = array();
                                            } else {
                                                if (!empty(trim(trim(str_replace(',', '-', $option)), $special))) {
                                                    $item_option[trim(trim(str_replace(',', '-', $key)), $special) . '_' . trim(trim(str_replace(',', '-', $option)), $special)] = trim($option);
                                                }
                                            }
                                        }
                                        $item[trim(trim(str_replace(',', '-', $key)), $special)] = $item_option;
                                        $item = array_filter($item);
                                        $attrname = $titlevalue->internal_name;
                                        $model->$attrname = explode(',', $profilefield->$titlenam);
                                        echo $form->field($model, $titlevalue->internal_name)->widget(Select2::classname(), [
                                            'id' => $tag_indx,
                                            'data' => $item,
                                            'language' => 'en',
                                            'showToggleAll' => false,
                                            'options' => [
                                                'placeholder' => 'Enter text to filter options below.',
                                                'multiple' => true,
                                                'class' => 'hint-txt',
                                                'tabindex' => $tag_indx++,
                                                'data-maxlength' => $item_maxlength
                                            ],
                                            'pluginOptions' => [
                                                //'tags' => true,
                                                'allowClear' => true,
                                                'closeOnSelect' => false,
                                                'maximumSelectionLength' => $item_maxlength,
                                            ],
                                        ])->label(false);
                                        break;
                                    case 'MultiSelect':
                                        $multiselect_option = '';
                                        $item_option = '';
                                        $multiselect_option = json_decode($fieldtyp->field_type_config, true);
                                        $multiselect_option_data = $multiselect_option['options'];
                                        foreach (explode("\n", $multiselect_option_data) as $option) {
                                            if (strpos($option, "|") !== false) {
                                                $option = rtrim($option);
                                                list($multiselect_key, $multiselect_value) = explode("|", $option);
                                                $eachtitle = explode(",", $multiselect_value);
                                                $eachtitle = array_filter($eachtitle);
                                                $item_option[$multiselect_key] = $eachtitle;
                                            } else {
                                                $item_option[] = $option;
                                            }
                                        }

                                        $new_array = array();
                                        foreach ($item_option as $keys => $values) {
                                            foreach ($values as $k => $v) {
                                                $tmp = $keys . '_' . $v;
                                                if ($keys == 'other') {
                                                    $tmp = $v;
                                                }
                                                $new_array[$keys][$tmp] = $v;
                                            }
                                        }
                                        $item_option = $new_array;
                                        $item_maxlength = $multiselect_option['Max_selection_length'];
                                        $to_array = explode(",", $profilefield->$titlenam);
                                        $i = 0;
                                        foreach ($to_array as $keys => $vals) {
                                            if (!empty($vals)) {
                                                list($categry, $titl_data) = explode('_', $vals);
                                                $tit_value[$i++] = $titl_data;
                                            }
                                        }
                                        if (!empty($tit_value)) {
                                            $intern_data_value = implode(', ', $tit_value);
                                        } else {
                                            $intern_data_value = '';
                                        }
                                        $attrname = $titlevalue->internal_name;
                                        $model->$attrname = explode(',', $profilefield->$titlenam);
                                        echo $form->field($model, $titlevalue->internal_name)->widget(Select2::classname(), [
                                            'id' => $tag_indx,
                                            'data' => $item_option,
                                            'language' => 'en',
                                            'showToggleAll' => false,
                                            'options' => [
                                                'placeholder' => 'Enter search term here...',
                                                'multiple' => true,
                                                'class' => 'hint-txt',
                                                'tabindex' => $tag_indx++,
                                                'data-maxlength' => $item_maxlength
                                            ],
                                            'pluginOptions' => [
                                                //'tags' => true,
                                                'allowClear' => true,
                                                'closeOnSelect' => false,
                                                'maximumSelectionLength' => $item_maxlength,
                                            ],
                                        ])->label(false);
                                }
                                ?>

                            </div>

                            <?php
                        }
                        ?>
                    </div> 
                    <h5><?php echo $page_detail->footer_text; ?></h5>
                    <?= Html::submitButton('Save', ['class' => 'btn btn-primary']) ?>
                    <?php ActiveForm::end(); ?>
                </div>                
            </div>
        </div> 
    </div>
    <div class="col-md-1"></div>
</div>
<?php
$this->registerJs("
    $(document).ready(function() {
    $('#1').focus();
    
tag_index = $('.bootstrap-tagsinput').next('input:text').attr('tabindex');
        $('.bootstrap-tagsinput').find('input:text').attr('tabindex',tag_index);
        
$('.form-control').keyup(function (event) {
            if (event.keyCode == 13) {
                textboxes = $('.form-control');
                currentBoxNumber = textboxes.index(this);
                console.log(textboxes.index(this));
                if (textboxes[currentBoxNumber + 1] != null) {
                    nextBox = textboxes[currentBoxNumber + 1];
                    nextBox.focus();
                    nextBox.select();
                    event.preventDefault();
                    return false;
                }
            }
            
        });
        if(!$('.vmn_menu').hasClass('active')){
            $('.vmn_menu').addClass('active');
        }
        $('.vmn_pag').removeClass('active');
        $('.vmn_my_pg').removeClass('active');
        
    $('body').addClass('body-holder');

$('.hint-txt').parent('div').append('<div class=\"js-example-tags-container\"></div>');
    $('.select2-hidden-accessible').on('change', function () {
        var selected = $(this).find('option:selected');
        var container = $(this).siblings('.js-example-tags-container');

        var list = $('<ul>');
        selected.each(function (k, v) {
            var li = $('<li class=\"tag-selected\"><a class=\"destroy-tag-selected\">x</a>' + $(v).text() + '</li>');
            li.children('a.destroy-tag-selected')
                    .off('click.select2-copy')
                    .on('click.select2-copy', function (e) {
                        var opt = $(this).data('select2-opt');
                        opt.attr('selected', false);
                        opt.parents('select').trigger('change');
                    }).data('select2-opt', $(v));
            list.append(li);
        });
        container.html('').append(list);
    }).trigger('change');
    $('.hint-txt').on('select2:open', function (e) {
        $('.select2-container').addClass('select2-container--krajee');
    });
    $('.hint-txt').on('select2:select', function (e) {
        var ele = $(this);
        maxlength = $(this).attr('data-maxlength');
        if (ele.val().length == maxlength) {
            ele.select2('close');
        }
    });


    });
    
$('.enterSubmit').keypress(function(e) {
    if(e.which == 13) {
        return false;
    }
});
");
?>
