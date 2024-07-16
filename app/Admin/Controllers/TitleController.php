<?php

namespace App\Admin\Controllers;

use OpenAdmin\Admin\Controllers\AdminController;
use OpenAdmin\Admin\Form;
use OpenAdmin\Admin\Grid;
use OpenAdmin\Admin\Show;
use \App\Models\Title;

class TitleController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'Title';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new Title());

        $grid->column('id', __('Id'));
        $grid->column('seo_title_home', __('Seo title home'));
        $grid->column('seo_des_home', __('Seo des home'));
        $grid->column('seo_key_home', __('Seo key home'));
        $grid->column('seo_title_about', __('Seo title about'));
        $grid->column('seo_des_about', __('Seo des about'));
        $grid->column('seo_key_about', __('Seo key about'));
        $grid->column('seo_title_services', __('Seo title services'));
        $grid->column('seo_des_services', __('Seo des services'));
        $grid->column('seo_key_services', __('Seo key services'));
        $grid->column('seo_title_blog', __('Seo title blog'));
        $grid->column('seo_des_blog', __('Seo des blog'));
        $grid->column('seo_key_blog', __('Seo key blog'));
        $grid->column('seo_title_case', __('Seo title case'));
        $grid->column('seo_des_case', __('Seo des case'));
        $grid->column('seo_key_case', __('Seo key case'));
        $grid->column('seo_title_contact', __('Seo title contact'));
        $grid->column('seo_des_contact', __('Seo des contact'));
        $grid->column('seo_key_contact', __('Seo key contact'));
        $grid->column('seo_title_search', __('Seo title search'));
        $grid->column('seo_des_search', __('Seo des search'));
        $grid->column('seo_key_search', __('Seo key search'));
        $grid->column('created_at', __('Created at'));
        $grid->column('updated_at', __('Updated at'));

        return $grid;
    }

    /**
     * Make a show builder.
     *
     * @param mixed $id
     * @return Show
     */
    protected function detail($id)
    {
        $show = new Show(Title::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('seo_title_home', __('Seo title home'));
        $show->field('seo_des_home', __('Seo des home'));
        $show->field('seo_key_home', __('Seo key home'));
        $show->field('seo_title_about', __('Seo title about'));
        $show->field('seo_des_about', __('Seo des about'));
        $show->field('seo_key_about', __('Seo key about'));
        $show->field('seo_title_services', __('Seo title services'));
        $show->field('seo_des_services', __('Seo des services'));
        $show->field('seo_key_services', __('Seo key services'));
        $show->field('seo_title_blog', __('Seo title blog'));
        $show->field('seo_des_blog', __('Seo des blog'));
        $show->field('seo_key_blog', __('Seo key blog'));
        $show->field('seo_title_case', __('Seo title case'));
        $show->field('seo_des_case', __('Seo des case'));
        $show->field('seo_key_case', __('Seo key case'));
        $show->field('seo_title_contact', __('Seo title contact'));
        $show->field('seo_des_contact', __('Seo des contact'));
        $show->field('seo_key_contact', __('Seo key contact'));
        $show->field('seo_title_search', __('Seo title search'));
        $show->field('seo_des_search', __('Seo des search'));
        $show->field('seo_key_search', __('Seo key search'));
        $show->field('created_at', __('Created at'));
        $show->field('updated_at', __('Updated at'));

        return $show;
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        $form = new Form(new Title());

        $form->text('seo_title_home', __('Seo title home'));
        $form->textarea('seo_des_home', __('Seo des home'));
        $form->textarea('seo_key_home', __('Seo key home'));
        $form->text('seo_title_about', __('Seo title about'));
        $form->textarea('seo_des_about', __('Seo des about'));
        $form->textarea('seo_key_about', __('Seo key about'));
        $form->text('seo_title_services', __('Seo title services'));
        $form->textarea('seo_des_services', __('Seo des services'));
        $form->textarea('seo_key_services', __('Seo key services'));
        $form->text('seo_title_blog', __('Seo title blog'));
        $form->textarea('seo_des_blog', __('Seo des blog'));
        $form->textarea('seo_key_blog', __('Seo key blog'));
        $form->text('seo_title_case', __('Seo title case'));
        $form->textarea('seo_des_case', __('Seo des case'));
        $form->textarea('seo_key_case', __('Seo key case'));
        $form->text('seo_title_contact', __('Seo title contact'));
        $form->textarea('seo_des_contact', __('Seo des contact'));
        $form->textarea('seo_key_contact', __('Seo key contact'));
        $form->text('seo_title_search', __('Seo title search'));
        $form->textarea('seo_des_search', __('Seo des search'));
        $form->textarea('seo_key_search', __('Seo key search'));

        return $form;
    }
}
