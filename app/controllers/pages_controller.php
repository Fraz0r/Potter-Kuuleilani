<?php

/**
 * Description of pages_controller
 *
 * @author Tim Frazier <tim.frazier at gmail.com>
 */
class PagesController extends ApplicationController
{
	protected function _init()
	{
		$this->page = Page::published()->find_by_url_key($_GET['url-key']);

		if(!$this->page)
			throw new KU\Exception\PageException('Page Not Found', array(), 404);

		return parent::_init();
	}

	public function show()
	{
		switch($_GET['format']) {
			case 'html':
				$this->render($_GET['url-key']); //Remove this when CMS done
				break;
			default:
				throw new KU\Exception\PageException('Unaccepted format \'%s\' requested for \'%s\'', array($_GET['format'], $this->page->url_key));
		}
	}
}

?>