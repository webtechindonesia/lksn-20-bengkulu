<?php

namespace App\Http\Controllers;

use App\Choice;
use App\Http\Resources\PollResource;
use App\Poll;
use Illuminate\Http\Request;

class PollController extends Controller
{
    public function store(Request $request)
    {
        $this->validate($request,[
            'title' => 'required',
            'description' => 'required',
            'deadline' => 'required|date',
            'choices' => 'required|between:2,2'
        ]);

        $poll = Poll::create([
            'title' => $request->title,
            'description' => $request->description,
            'deadline' => $request->deadline,
            'created_by' => auth()->id()
        ]);

        return PollResource::make($poll);
    }

    public function index()
    {
        $poll = Poll::get();
        return PollResource::collection($poll);
    }
}
