<?php

namespace KU\Component;
use       KU\Exception;
use       P3\Template\Base as ComponentView;

/**
 * Description of Base
 *
 * @author Tim Frazier <tim.frazier at gmail.com>
 */
abstract class Base 
{ 
	private static $_ACCEPTABLE_RESPONSES = array(null, true);

	private $_cammeled;
	private $_template_path = 'component/';
	private $_view;

	protected $_options;

//- Public
	public function __construct(array $options = array())
	{
		$this->_cammeled = \str::fromCamelCase(array_pop(explode('\\', get_class($this))));
		$this->_options = $options;

		$this->_template_path .= isset($options['view_dir']) ? $options['view_dir'] : $this->_cammeled;


		$this->_prepare_view();
	}

	public function process($method, array $args = array())
	{
		/* Need some error handing... but for now - BLEAGH */
		$ret = call_user_func_array(array($this, $method), $args);

		if(in_array($ret, self::$_ACCEPTABLE_RESPONSES))
			$this->renderView($method);
	}

	public function renderView($method)
	{
		$this->_view->display($method);
	}


//- Static
	public static function render($what)
	{
		$parsed = self::_parse($what);
		
		return self::_instantiateComponent($parsed['class'])
					->process($parsed['method'], $parsed['args']);
	}

//- Prt. Static
	protected static function _classFor($class_name)
	{
		return '\KU\Component\\'.\str::titleize($class_name);
	}

//- Prv. Static
	private function _instantiateComponent($component_class)
	{
		/* Need some error handing... but for now - BLEAGH */
		return new $component_class;
	}

	private function _parse($what)
	{
		$parts = explode(' ', $what);

		if(count($parts) < 2)
			throw new \ComponentException('Components require a class and method at minimum.', array(), 500);

		return array(
			'class'  => self::_classFor(array_shift($parts)),
			'method' => array_shift($parts),
			'args'   => $parts
		);
	}

	private function _prepare_view()
	{
		$this->_view = new ComponentView(null, $this->_template_path);
		$this->_view->component = $this;
	}

//- Magic
	public function __get($name)
	{
		return $this->_view->__get($name);
	}

	public function __set($name, $val)
	{
		return $this->_view->__set($name, $val);
	}
}

?>