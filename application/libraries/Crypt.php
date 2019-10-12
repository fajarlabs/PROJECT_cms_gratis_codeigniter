<?php 

class Crypt {
	
	function encrypt($plaintext, $key) {
	    $plaintext = $this->pkcs5_pad($plaintext, 16);
	    return bin2hex(mcrypt_encrypt(MCRYPT_RIJNDAEL_128, hex2bin($key), $plaintext, MCRYPT_MODE_ECB));
	}

	function decrypt($encrypted, $key) {
	    $decrypted = mcrypt_decrypt(MCRYPT_RIJNDAEL_128, hex2bin($key), hex2bin($encrypted), MCRYPT_MODE_ECB);
	    $padSize = ord(substr($decrypted, -1));
	    return substr($decrypted, 0, $padSize*-1);
	}

	function pkcs5_pad ($text, $blocksize)
	{
	    $pad = $blocksize - (strlen($text) % $blocksize);
	    return $text . str_repeat(chr($pad), $pad);
	}
}