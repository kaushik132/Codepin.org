<?php

namespace App\Admin\Controllers;

use OpenAdmin\Admin\Controllers\AdminController;
use OpenAdmin\Admin\Form;
use OpenAdmin\Admin\Grid;
use OpenAdmin\Admin\Show;
use \App\Models\Service;
use \App\Models\ServiceCategory;

class ServiceController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'Service';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new Service());

        $grid->model()->orderBy('id', 'DESC');
        $grid->column('title', __('Title'));
        $grid->column('slug', __('Slug'));
        $grid->column('short_content', __('Short content'));
        $grid->column('image', __('Image'))->image(url('/uploads/'),100,150);
        $grid->column('home_image', __('Home image'))->image(url('/uploads/'),100,150);
       

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
        $show = new Show(Service::findOrFail($id));

        $show->field('id', __('Id'));

        $show->field('title', __('Title'));
        $show->field('slug', __('Slug'));
        $show->field('short_content', __('Short content'));
       
        $show->field('alt', __('Alt'));
        $show->field('url', __('Url'));
        $show->field('description', __('Description'));
        $show->field('seo_title', __('Seo title'));
        $show->field('seo_description', __('Seo description'));
        $show->field('seo_keyword', __('Seo keyword'));
      
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
        $form = new Form(new Service());

        $form->select('service_category_id', __('Service category id'))->options(ServiceCategory::pluck('name','id'))->default(null)->rules('required');
        $form->text('title', __('Title'));
        $form->hidden('slug', __('Slug'));

        $form->saving(function(Form $form){

            $form->slug = strtolower(preg_replace('/[^A-Za-z0-9-]+/', '-',trim($form->title)));
        });


        $form->textarea('short_content', __('Short content'));
        $form->image('image', __('Image'));
        $form->image('home_image', __('Home image'));
        $form->text('alt', __('Alt'));
        $form->url('url', __('Url'));
        $form->ckeditor('description', __('Description'));
        $form->textarea('seo_title', __('Seo title'));
        $form->textarea('seo_description', __('Seo description'));
        $form->textarea('seo_keyword', __('Seo keyword'));
        $form->text('question', __('Question'));
        $form->text('answer', __('Answer'));
       

        return $form;
    }
}
