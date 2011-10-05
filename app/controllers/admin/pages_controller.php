<?php

namespace Admin;
use       Page;

/**
 * Description of pages_controller
 *
 * @author Tim Frazier <tim.frazier at gmail.com>
 */
class PagesController extends AdminController
{
//- Public
	public function add()
	{
		$this->page = new Page;
	}

	public function create()
	{
		$this->page = new Page($_POST['page']);

		if($this->page->save()) {
			$this->add_message('Page saved');
			$this->redirect('/admin/pages');
		} else {
			$this->add_error('Failed to save page');
			$this->render('add');
		}
	}

	public function delete()
	{
		$this->page = Page::find($_GET['id']);

		$this->page->delete();
		$this->add_message('Page deleted');
		$this->redirect('/admin/pages');
	}

	public function edit()
	{
		$this->page = Page::find($_GET['id']);
	}

	public function index()
	{
		$this->pages = Page::all();
	}

	public function update()
	{
		$this->page = Page::find($_GET['id']);

		$this->page->update($_POST['page']);

		if($this->page->save()) {
			$this->add_message('Page saved');
			$this->redirect('/admin/pages');
		} else {
			$this->render('edit');
		}
	}

//- Proctected
	protected function _init()
	{
	}
}

?>