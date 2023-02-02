<?php

namespace App\Http\Controllers;

use App\Models\Pagetwo;
use Illuminate\Http\Request;

class PagetwoController extends Controller
{
    public function index()
    {
        return view('admin.pagestwo.index');
    }
    public function create(Request $request)
    {
        $this->pages = Pagetwo::newPages($request);
        return redirect()->back()->with('message', 'Page info create successfully.');
    }

    public function manage()
    {
        $this->pagetwo = Pagetwo::all();
        return view('admin.pagestwo.manage',['pagetwo'=>$this->pagetwo]);
    }

    public function edit($id)
    {
        $this->page = Pagetwo::find($id);
        return view('admin.pagestwo.edit', [
            'page'       => $this->page
                       
        ]);
    }
    public function update(Request $request, $id)
    {
        $this->pages = Pagetwo::updatePages($request, $id);

        
        return redirect('/secondpages/manage')->with('message', 'pages info update successfully.');
    }

    public function delete($id)
    {
        Pagetwo::deletepages($id);
        
        return redirect('/secondpages/manage')->with('message', 'Shipping info delete successfully.');
    }
}
