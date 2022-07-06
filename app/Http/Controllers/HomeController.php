<?php

namespace App\Http\Controllers;

use Illuminate\Http\JsonResponse;

class HomeController extends Controller
{
    /**
     * @return JsonResponse
     */
    public function index (): JsonResponse
    {
        return response()->json(['hello' => 'MacPaw Internship 2022!']);
    }
}
