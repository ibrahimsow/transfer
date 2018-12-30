<?php

// Insert Class with session database
require 'DbUtil.php';

/**
	Manage the content of table : Fichier
*/
class FileDao {
	
	/**
		Return table content : fichier
	*/
	public static function findAllFiles() {

		$dbUtil = new DbUtil();

		$sessionMysql = DbUtil::getInstance()->getDbSession();

		$sqlRequest = "SELECT * ";
        $sqlRequest .= "FROM fichier f;";

        $request = $sessionMysql->prepare($sqlRequest);
        $request->execute();

        return $request->fetchAll(PDO::FETCH_ASSOC);
	}

	/**
		Add file in table : fichier
	*/
	public static function createNewFile($nameFile, $expediteur, $size, $path, $key) {

		$sessionMysql = DbUtil::getInstance()->getDbSession();

		$sqlRequest = "INSERT INTO fichier ";
        $sqlRequest .= "VALUES (null, ";
        $sqlRequest .= "'" . $nameFile . "', ";
        $sqlRequest .= "'" . $expediteur . "', ";
        $sqlRequest .= $size . ", ";
        $sqlRequest .= "'" . $path . "', ";
        $sqlRequest .= "null, ";
        $sqlRequest .= "'" . sha1($key) . "', ";
        $sqlRequest .= "'" . date('Y/m/d h:m:s') . "');";

       	$request = $sessionMysql->prepare($sqlRequest);
        
        $request->execute();

        return $sessionMysql->lastInsertId();

	}

	/**
		Return a file in table : fichier
	*/
	public static function findById($id) {
		$sessionMysql = DbUtil::getInstance()->getDbSession();

		$sqlRequest = "SELECT * ";
        $sqlRequest .= "FROM fichier f ";
        $sqlRequest .= "WHERE f.id = $id;";

        $request = $sessionMysql->prepare($sqlRequest);
        $request->execute();

        return $request->fetchAll(PDO::FETCH_ASSOC);
	}

	public static function findByUUID($uuid) {
		$sessionMysql = DbUtil::getInstance()->getDbSession();

		$sqlRequest = "SELECT * ";
        $sqlRequest .= "FROM fichier f ";
        $sqlRequest .= "WHERE f.uuid = $uuid;";

        $request = $sessionMysql->prepare($sqlRequest);
        $request->execute();

        return $request->fetchAll(PDO::FETCH_ASSOC);
	}

}

?>