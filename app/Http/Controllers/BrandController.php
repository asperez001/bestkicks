<?php namespace App\Http\Controllers;

use App\Http\Requests\CategoryRequest;
use App\Http\Controllers\Controller;
use Request;
use App\Http\Requests;
use App\Brand;
use View;
use Input;
use Auth;
use Redirect;


class BrandController extends Controller {

	/**
	 * Display a listing of the resource.
	 *
	 * @return Response
 */

	public function __construct()
	{
		$this->middleware('auth');
	}
	
	public function index()
	{
		$brand = Brand::all();
		return view('brand.index', compact('brand'));
	}
	
	/**
	 * Show the form for creating a new resource.
	 *
	 * @return Response
	 */
	public function create()
	{
		return view('brand.create');
	}

	/**
	 * Store a newly created resource in storage.
	 *
	 * @return Response
	 */
	public function store(CategoryRequest $request)
	{	
		Brand::create([
			'name' => $request['name'],
		]);

		return redirect ('/brand');
	}

	/**
	 * Display the specified resource.
	 *
	 * @param  int  $id
	 * @return Response
	 */

	/**
	 * Show the form for editing the specified resource.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function edit($id)
	{
		$brand = Brand::find($id);
		
		return View::make('brand.edit')
            ->with('brand', $brand);
	}

	/**
	 * Update the specified resource in storage.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function update($id)
	{
		$brand = Brand::find($id);
		$editbrand = Request::all(); 
		$updatebrand = Brand::find($id)->update($editbrand);
		return redirect('/brand');
	}

	/**
	 * Remove the specified resource from storage.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function destroy($id)
	{
		$brand = Brand::find($id);
		$brand->delete();

		return Redirect::back();
	}

}
