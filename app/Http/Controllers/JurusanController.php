<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Jurusan;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Str;
use SweetAlert;

class JurusanController extends Controller
{
    public function __construct(){
        $this->middleware('auth');
    }

    public function index(){  
    	return view('jurusan.jurusan',[
    		'getjurusan' => Jurusan::all(),
    	]);     
    }

    public function add(){
        return view('jurusan.addjurusan');
    }

    public function save(){

        request()->validate([
            'nama' => 'required',
            'rumpun' => 'required',
            'foto' => 'required|mimes:jpg,jpeg,png,bmp',
            'deskripsi' => 'required',
        ],[
            'nama.required' => 'nama wajib diisi',
            'rumpun.required' => 'wajib diisi',
            'foto.required' => 'wajib diisi',
            'foto.mimes' => 'ekstensi harus jpg,jpeg,png,bmp',
            'deskripsi.required' => 'wajib diisi',
        ]);

        $file = Request()->foto;
        $namefile = Str::random(10).'.'.$file->extension();
        $file->move(public_path('jurusan-img'),$namefile);

        $data = [
            'nama' => Request()->nama,
            'rumpun' => Request()->rumpun,
            'foto' => $namefile,
            'deskripsi' => Request()->deskripsi,            
        ];

        Jurusan::create($data);
        alert()->success('Berhasil Di Tambahkan!', 'Success');
        return redirect()->route('jurusan');
    }

    public function edit($id){

        return view('jurusan.editjurusan',[
            'data' => Jurusan::where('id_jurusan', '=', $id)->first(),
        ]);
    }

    public function update($id){

        request()->validate([
            'nama' => 'required',
            'rumpun' => 'required',
            'foto' => 'mimes:jpg,jpeg,png,bmp',
            'deskripsi' => 'required',
        ],[
            'nama.required' => 'nama wajib diisi',
            'rumpun.required' => 'wajib diisi',
            'foto.mimes' => 'ekstensi harus jpg,jpeg,png,bmp',
            'deskripsi.required' => 'wajib diisi',
        ]);

        if(Request()->foto == ""){
            $data = [
                'nama' => Request()->nama,
                'rumpun' => Request()->rumpun,
                'deskripsi' => Request()->deskripsi,            
            ];

            Jurusan::where('id_jurusan', '=', $id)->update($data);
            alert()->success('Berhasil Di Edit!', 'Success');
            return redirect()->route('jurusan');

        }else{

            $data = Jurusan::where('id_jurusan', '=', $id)->first();

            if(!$data->foto == ""){
                unlink(public_path('jurusan-img/'.$data->foto));
            }
            
            $file = Request()->foto;
            $namefile = Str::random(10).'.'.$file->extension();
            $file->move(public_path('jurusan-img'),$namefile);

            $data = [
                'nama' => Request()->nama,
                'rumpun' => Request()->rumpun,
                'foto' => $namefile,
                'deskripsi' => Request()->deskripsi,            
            ];

            Jurusan::where('id_jurusan', '=', $id)->update($data);
            alert()->success('Berhasil Di Edit!', 'Success');
            return redirect()->route('jurusan');
        }        
    }

    public function delete($id){
        $data = Jurusan::where('id_jurusan', '=', $id)->first();

        if(!$data->foto == ""){
            unlink(public_path('jurusan-img/'.$data->foto));
        }

        Jurusan::where('id_jurusan',$id)->delete();
        alert()->success('Berhasil Di Hapus!', 'Success');
        return redirect()->route('jurusan');
    }
}
