<?php

namespace App\Http\Controllers;

use App\Models\Pages;
use Illuminate\Http\Request;

class PagesController extends Controller
{
    public function index()
    {
        return view('admin.pages.index');
    }
    public function create(Request $request)
    {
        $this->pages = Pages::newPages($request);
        return redirect()->back()->with('message', 'Page info create successfully.');
    }

    public function manage()
    {
        $this->pages = Pages::all();
        return view('admin.pages.manage',['pages'=>$this->pages]);
    }

    public function edit($id)
    {
        $this->page = Pages::find($id);
        return view('admin.pages.edit', [
            'page'       => $this->page
                       
        ]);
    }
    public function update(Request $request, $id)
    {
        $this->pages = Pages::updatePages($request, $id);

        
        return redirect('/pages/manage')->with('message', 'pages info update successfully.');
    }

    public function delete($id)
    {
        Pages::deletepages($id);
        
        return redirect('/pages/manage')->with('message', 'Shipping info delete successfully.');
    }
}
