<?php
date_default_timezone_set('Asia/Jakarta');

function tgl_indonesia($date)
{
	/* array hari dan bulan */
	$nama_hari  = array("Minggu", "Senin", "Selasa", "Rabu", "Kamis", "Jum'at", "Sabtu");

	$nama_bulan = array("Januari","Februari","Maret","April","Mei","Juni","Juli","Agustus","September","Oktober",
	                    "November","Desember");

	/*  Memisahkan format tanggal, bulan, tahun dengan substring */
	$tahun   = substr($date, 0, 4);
	$bulan   = substr($date, 5, 2);
	$tanggal = substr($date, 8, 2);
	$waktu   = substr($date, 11, 5);

	//w Urutan hari dalam seminggu
	$hari    = date("w", strtotime($date));

	$result  = $nama_hari[$hari] . ", " .$tanggal. " " .$nama_bulan[(int)$bulan-1]. " " .$tahun. " " .$waktu. " WIB";
	//keterangan (int)$bulan-1 karena array dimulai dari index ke 0 maka bulan-1
	return $result;
}

function tgl_indo($date)
{
	/* array hari dan bulan */
	$nama_hari  = array("Minggu", "Senin", "Selasa", "Rabu", "Kamis", "Jum'at", "Sabtu");

	$nama_bulan = array("Januari","Februari","Maret","April","Mei","Juni","Juli","Agustus","September","Oktober",
	                    "November","Desember");

	/*  Memisahkan format tanggal, bulan, tahun dengan substring */
	$tahun   = substr($date, 0, 4);
	$bulan   = substr($date, 5, 2);
	$tanggal = substr($date, 8, 2);
	$waktu   = substr($date, 11, 5);

	//w Urutan hari dalam seminggu
	$hari    = date("w", strtotime($date));

	$result  = $nama_hari[$hari] . ", " .$tanggal. " " .$nama_bulan[(int)$bulan-1]. " " .$tahun;
	//keterangan (int)$bulan-1 karena array dimulai dari index ke 0 maka bulan-1
	return $result;
}

function tgl_biasa($date)
{
	/* array hari dan bulan */
	$nama_hari  = array("Minggu", "Senin", "Selasa", "Rabu", "Kamis", "Jum'at", "Sabtu");

	$nama_bulan = array("01","02","03","04","05","06","07","08","09","10",
	                    "11","12");

	/*  Memisahkan format tanggal, bulan, tahun dengan substring */
	$tahun   = substr($date, 0, 4);
	$bulan   = substr($date, 5, 2);
	$tanggal = substr($date, 8, 2);
	$waktu   = substr($date, 11, 5);

	//w Urutan hari dalam seminggu
	$hari    = date("w", strtotime($date));

	$result  =  $tanggal. "/" .$nama_bulan[(int)$bulan-1]. "/" .$tahun;
	//keterangan (int)$bulan-1 karena array dimulai dari index ke 0 maka bulan-1
	return $result;
}

if (!function_exists('format_indo')) {
	function format_indo($date)
	{
	  date_default_timezone_set('Asia/Jakarta');
	  // array hari dan bulan
	  $Hari = array("Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat");
	  $Bulan = array("January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December");
	  $Bul = array("Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec");
  
	  // pemisahan tahun, bulan, hari, dan waktu
	  $tahun = substr($date, 0, 4);
	  $bul = substr($date, 5, 2);
	  $tgl = substr($date, 8, 2);
	  $waktu = substr($date, 11, 5);
	  $hari = date("w", strtotime($date));
	  $result = $Hari[$hari] . ", " . $tgl . " " . $Bul[(int)$bul - 1] . " " . $tahun;
  
	  return $result;
	}
  } 

function anti_injection($data)
{
	$filter = stripslashes(strip_tags(htmlspecialchars($data,ENT_QUOTES)));
	return $filter;
}

function slug($s)
{
	$c = array (' ');
    $d = array ('-','/','\\',',','.','#',':',';','\'','"','[',']','{','}',')','(','|','`','~','!','@','%','$','^','&','*','=','?','+');

    $s = str_replace($d, '', $s); // Hilangkan karakter yang telah disebutkan di array $d

    $s = strtolower(str_replace($c, '-', $s)); // Ganti spasi dengan tanda - dan ubah hurufnya menjadi kecil semua
    return $s;
}


function rupiah($nominal)
{
	return 'Rp '.number_format($nominal, 0, ',', '.');
}

/** login codeIgniter menggunakan bycrypt **/

if(!function_exists('get_hash'))
{    
    function get_hash($PlainPassword)
    {
    	$option=[
                'cost'=>5,// proses hash sebanyak: 2^5 = 32x
    	        ];
    	return password_hash($PlainPassword, PASSWORD_DEFAULT, $option);
   }
}

if(!function_exists('hash_verified'))
{  
    function hash_verified($PlainPassword,$HashPassword)
    {
    	return password_verify($PlainPassword,$HashPassword) ? true : false;
   }
}

/** login codeIgniter menggunakan bycrypt **/

function send($no,$msg)
{  

		$to = '62'.ltrim($no,0);
		$curl =curl_init();
		$data = ['number' => '628888991876',// number sender
		'message' => $msg,// message content
		'to' => $to, // number receiver
		];

		curl_setopt($curl, CURLOPT_CUSTOMREQUEST, "POST");
		curl_setopt($curl, CURLOPT_RETURNTRANSFER, true);
		curl_setopt($curl, CURLOPT_POSTFIELDS, http_build_query($data) );		
		curl_setopt($curl, CURLOPT_URL, 'https://api.smartri.id/send');
		// curl_setopt($curl, CURLOPT_URL, 'https://api.stiker-label.com/send');
		curl_setopt($curl, CURLOPT_SSL_VERIFYHOST, 0);
		curl_setopt($curl, CURLOPT_SSL_VERIFYPEER, 0);
		$result = curl_exec($curl);
		curl_close($curl);

		return $result;
}
