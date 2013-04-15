<?php 
defined('C5_EXECUTE') or die("Access Denied.");
class Concrete5_Model_PermissionCache {
	
	public static function getResponse($object) {
		$cl = CacheLocal::get();
		if ($cl->enabled) {
			$identifier = 'pr:' . get_class($object) . ':' . $object->getPermissionObjectIdentifier();
			if (array_key_exists($identifier, $cl->cache)) {
				return $cl->cache[$identifier];
			}
		}
	}

	public static function addResponse($object, PermissionResponse $pr) {
		$cl = CacheLocal::get();
		if ($cl->enabled) {
			$identifier = 'pr:' . get_class($object) . ':' . $object->getPermissionObjectIdentifier();
			$cl->cache[$identifier] = $pr;
		}
	}

	public static function getPermissionAccessObject($paID, PermissionKey $pk) {
		$cl = CacheLocal::get();
		if ($cl->enabled) {
			$class = str_replace('PermissionKey', 'PermissionAccess', get_class($pk));
			$identifier = 'pao:' . $class . ':' . $paID;
			if (array_key_exists($identifier, $cl->cache)) {
				return $cl->cache[$identifier];
			}
		}
	}

	public static function addPermissionAccessObject($paID, PermissionKey $pk, $obj) {
		$cl = CacheLocal::get();
		if ($cl->enabled) {
			$class = str_replace('PermissionKey', 'PermissionAccess', get_class($pk));
			$identifier = 'pao:' . $class . ':' . $paID;
			$cl->cache[$identifier] = $obj;
		}
	}
	
	public function validate(PermissionKey $pk) {
		$cl = CacheLocal::get();
		if (!$cl->enabled) {
			return -1;
		}
		
		$object = $pk->getPermissionObject();
		if (is_object($object)) {
			$identifier = 'pk:' . $pk->getPermissionKeyHandle() . ':' . $object->getPermissionObjectIdentifier();
		} else {
			$identifier = 'pk:' . $pk->getPermissionKeyHandle();
		}

		if (array_key_exists($identifier, $cl->cache)) {
			return $cl->cache[$identifier];
		}

		return -1;
	}

	public static function addValidate(PermissionKey $pk, $valid) {
		$cl = CacheLocal::get();
		if ($cl->enabled) {
			$object = $pk->getPermissionObject();
			if (is_object($object)) {
				$identifier = 'pk:' . $pk->getPermissionKeyHandle() . ':' . $object->getPermissionObjectIdentifier();
			} else {
				$identifier = 'pk:' . $pk->getPermissionKeyHandle();
			}
			$cl->cache[$identifier] = $valid;
		}
	}
	
	public static function addAccessObject(PermissionKey $pk, $object, $pa) {
		$cl = CacheLocal::get();
		if ($cl->enabled) {
			$identifier = 'pk:' . $pk->getPermissionKeyHandle() . ':' . $object->getPermissionObjectIdentifier();
			$cl->cache[$identifier] = $pa;
		}
	}

	public static function clearAccessObject(PermissionKey $pk, $object) {
		$cl = CacheLocal::get();
		if ($cl->enabled) {
			$identifier = 'pk:' . $pk->getPermissionKeyHandle() . ':' . $object->getPermissionObjectIdentifier();
			unset($cl->cache[$identifier]);
		}
	}

	public static function getAccessObject($pk, $object) {
		$cl = CacheLocal::get();
		if ($cl->enabled) {
			$identifier = 'pk:' . $pk->getPermissionKeyHandle() . ':' . $object->getPermissionObjectIdentifier();
			if (array_key_exists($identifier, $cl->cache)) {
				return $cl->cache[$identifier];
			}
		}
		return false;
	}
	



}