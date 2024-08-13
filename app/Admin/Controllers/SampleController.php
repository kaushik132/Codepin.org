<?php

namespace App\Admin\Controllers;

use OpenAdmin\Admin\Controllers\AdminController;
use OpenAdmin\Admin\Form;
use OpenAdmin\Admin\Grid;
use OpenAdmin\Admin\Show;
use \App\Models\sample;
use \App\Models\ServiceCategory;

class SampleController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'sample';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new sample());

        $grid->column('id', __('Id'));
        $grid->column('sampleCategory.name', __('Category'));
        $grid->column('module_name', __('Module name'));
        $grid->column('module_title', __('Module title'));
        $grid->column('assignment_title', __('Assignment title'));
        $grid->column('status', __('Status'));
   

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
        $show = new Show(sample::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('category', __('Category'));
        $show->field('module_name', __('Module name'));
        $show->field('module_title', __('Module title'));
        $show->field('price', __('Price'));
        $show->field('assignment_title', __('Assignment title'));
        $show->field('pages', __('Pages'));
        $show->field('words', __('Words'));
        $show->field('image', __('Image'));
        $show->field('details', __('Details'));
        $show->field('status', __('Status'));
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
        $form = new Form(new sample());

        $form->select('category', __('Service Category Name'))->options(ServiceCategory::pluck('name','id'))->default(null)->rules('required');
        $form->text('module_name', __('Module name'));
        $form->text('module_title', __('Module title'));
        $form->text('price', __('Price'));
        $form->text('assignment_title', __('Assignment title'));
        $form->text('pages', __('Pages'));
        $form->text('words', __('Words'));
        $form->image('image', __('Image'));
        $form->ckeditor('details', __('Details'));
        $form->text('status', __('Status'))->default(1);

        return $form;
    }
}
