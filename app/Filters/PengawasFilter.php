<?php

namespace App\Filters;

use CodeIgniter\Filters\FilterInterface;
use CodeIgniter\HTTP\RequestInterface;
use CodeIgniter\HTTP\ResponseInterface;

class PengawasFilter implements FilterInterface
{
    public function before(RequestInterface $request, $arguments = null)
    {
        if (session('log_auth')['role'] != "3") {
            session()->setFlashdata('someWrong', 'Halaman ini tidak dapat diakses oleh anda');
            return redirect()->to(base_url('/'));
        }
    }

    public function after(RequestInterface $request, ResponseInterface $response, $arguments = null)
    {
        // Do something here
    }
}
