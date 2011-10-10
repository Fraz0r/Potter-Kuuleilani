<?php

namespace Component;
use       Contact;

/**
 * Description of contacts
 *
 * @author Tim Frazier <tim.frazier at gmail.com>
 */
class ContactsController extends \ApplicationController
{

//- Public
	public function create()
	{
		$this->contact = new Contact($_POST['contact']);

		if($this->contact->save()) {
			$this->add_message('Thank you for contacting us');
			$this->redirect(':back');
		} else {
			$this->render('form');	
		}
	}

// Protected
	protected function _init()
	{
		parent::_init();
		$this->component = new \KU\Component\Contact;
		$_GET['url-key'] = 'contact';
	}
}

?>