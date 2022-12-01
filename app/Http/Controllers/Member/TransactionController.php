<?php

namespace App\Http\Controllers\Member;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Str;
use App\Models\Transaction;
use App\Models\Package;

class TransactionController extends Controller
{
    public function store(Request $request)
    {
        return "test";
    }
}
