<?php

namespace App\Filters;

use CodeIgniter\Filters\FilterInterface;
use CodeIgniter\HTTP\RequestInterface;
use CodeIgniter\HTTP\ResponseInterface;

class AdminTUFilter implements FilterInterface
{
    public function before(RequestInterface $request, $arguments = null)
    {
        // session()->remove('log_auth');
        if (session('log_auth')['role'] != "1") {
            session()->setFlashdata('blockAccess', 'Halaman ini tidak dapat diakses oleh anda');
            return redirect()->to(base_url('/'));
        }
    }

    public function after(RequestInterface $request, ResponseInterface $response, $arguments = null)
    {
        // Do something here
    }
}
