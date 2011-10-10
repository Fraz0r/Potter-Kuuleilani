<?php

namespace KU\Component;
use       Video;

/**
 * Description of Videos
 *
 * @author Tim Frazier <tim.frazier at gmail.com>
 */
class Videos extends Base
{
	public function index()
	{
		$this->videos = Video::all();
	}
}

?>