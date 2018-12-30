<?php

/**
	Manage the session mysql 
*/
class DbUtil {
	
	private const DB_USER = "ibrahims";
	private const DB_PASSWORD = "gmHxoLBF6wbHiw==";
	//private const DB_USER = "root";
    //private const DB_PASSWORD = "online@2017";
    private const HOST = "localhost";
    private const DB = "transfert";

    /**
	 * Session database
     */
    private $_connexion = null;

    /**
     * Instance object
     */
	private static $_instance = null;

	private function __construct() {}

	/**
	 * Create the unique instance of DbUtil class if not exist 
	 * and return $_instance
	 */
	public static function getInstance() {
 
		if(is_null(self::$_instance)) {
			self::$_instance = new DbUtil();
			self::$_instance->initConnexion();
		}

		return self::$_instance;
    }

	/**
	 * Init connexion database
	 */
    private function initConnexion() {

		if (is_null(self::$_instance->_connexion)) {
			$connexionString = "mysql:";
			$connexionString .= "host=" . self::HOST . ";";
			$connexionString .= "dbname=" . self::DB . "; charset=utf8";

            self::$_instance->_connexion = new PDO($connexionString, self::DB_USER, self::DB_PASSWORD);
        }    
	}

	public function getDbSession() {
		return self::$_instance->_connexion;
	}

}

?>