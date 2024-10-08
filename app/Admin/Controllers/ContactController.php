<?php

namespace App\Admin\Controllers;

use OpenAdmin\Admin\Controllers\AdminController;
use OpenAdmin\Admin\Form;
use OpenAdmin\Admin\Grid;
use OpenAdmin\Admin\Show;
use \App\Models\Contact;


class ContactController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'Contact';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new Contact());

        $grid->column('id', __('Id'));
        $grid->column('name', __('Name'));
        $grid->column('email', __('Email'));
        $grid->column('company', __('Company'));
        $grid->column('company_website', __('Company website'));
        $grid->column('subject', __('Subject'));
        $grid->column('budget', __('Budget'));
        $grid->column('message', __('Message'));
        $grid->column('image', __('Image'))->display(function ($image) {
            return '<img src="' . asset('uploads/' . $image) . '" style="max-height:100px;max-width:100px"/>';
        });
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
        $show = new Show(Contact::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('name', __('Name'));
        $show->field('email', __('Email'));
        $show->field('company', __('Company'));
        $show->field('company_website', __('Company website'));
        $show->field('subject', __('Subject'));
        $show->field('budget', __('Budget'));
        $show->field('message', __('Message'));
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
        $form = new Form(new Contact());
        

        $form->text('name', __('Name'));
        $form->email('email', __('Email'));
        $form->image('image', __('File'));
        $form->text('company', __('Company'));
        $form->text('company_website', __('Company website'));
        $form->text('subject', __('Subject'));
        $form->text('budget', __('Budget'));
        $form->text('message', __('Message'));
        

        return $form;
    }
}
