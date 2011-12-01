<?php

namespace KU\Component;

/**
 * Description of Contact
 *
 * @author Tim Frazier <tim.frazier at gmail.com>
 */
class Slideshow extends Base
{
	private static $_dimensions = array('width' => 958, 'height' => 379);
	private static $_slide_path = 'images/slider';
	private static $_slides = array();


//- Public
	public function __construct()
	{
		self::$_slides = array_diff(scandir(\P3\ROOT.'/htdocs/'.self::$_slide_path), array('.', '..'));

		foreach(self::$_slides as &$slide)
			$slide = self::$_slide_path.'/'.$slide;

		parent::__construct(array('view_dir' => 'slideshows'));
	}

	public function display()
	{
		$this->slides = self::$_slides;
	}


//- View methods
	public function getDimensions()
	{
		return self::$_dimensions;
	}
}

?>