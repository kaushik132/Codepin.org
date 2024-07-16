<?php

namespace App\Admin\Controllers;

use OpenAdmin\Admin\Controllers\AdminController;
use OpenAdmin\Admin\Form;
use OpenAdmin\Admin\Grid;
use OpenAdmin\Admin\Show;
use \App\Models\ServiceCategory;

class ServiceCategoryController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'ServiceCategory';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new ServiceCategory());

        $grid->column('id', __('Id'));
        $grid->column('name', __('Name'));
        $grid->column('slug', __('Slug'));
        $grid->column('seo_title', __('Seo title'));
        $grid->column('seo_des', __('Seo des'));
        $grid->column('seo_key', __('Seo key'));
    

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
        $show = new Show(ServiceCategory::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('name', __('Name'));
        $show->field('slug', __('Slug'));
        $show->field('seo_title', __('Seo title'));
        $show->field('seo_des', __('Seo des'));
        $show->field('seo_key', __('Seo key'));
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
        $form = new Form(new ServiceCategory());

        $form->text('name', __('Name'));

        $form->hidden('slug');

        $form->saving(function (Form $form) {

           $form->slug = strtolower(preg_replace('/[^A-Za-z0-9-]+/', '-',trim($form->name)));
        });

        $form->textarea('seo_title', __('Seo Title'));
        $form->textarea('seo_des', __('Seo Description'));
        $form->textarea('seo_key', __('Seo Keywords'));

        return $form;
    }
}
