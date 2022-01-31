@extends('layout.master')

@section('content')
<div class="card">
  <div class="card-body">
    <h4 class="card-title">Tambah Berita</h4>
    <form class="forms-sample" action="/jurusan/simpan" method="post" enctype="multipart/form-data">
      @csrf
      <div class="row mt-5">
        <div class="col-sm-6">
          <div class="form-group">
            <label for="exampleInputName1">Nama Jurusan</label>
            <input type="text" value="{{old('nama')}}" class="form-control" id="exampleInputName1" placeholder="Judul" name="nama">
            @error('nama')
              <p class="text-danger">{{$message}}</p>
            @enderror
          </div>
        </div>
        <div class="col-sm-6">
          <div class="form-group">
            <label for="exampleInputName1">Rumpun</label>
            <select name="rumpun" class="form-control">
              <option value="">Pilih Disini</option>
              <option value="bm">Bisnis management</option>
              <option value="ti">Teknologi Informatika</option>
              <option value="seni">Seni</option>                            
            </select>            
            @error('rumpun')
              <p class="text-danger">{{$message}}</p>
            @enderror
          </div>
        </div>        
      </div>
      <div class="">
        <div class="form-group">
          <label>Foto</label>
          <input type="file" value="{{old('foto')}}" class="file-upload-default" name="foto">
          <div class="input-group col-xs-12">
            <input type="text" class="form-control file-upload-info" disabled placeholder="Upload Image">
            <span class="input-group-append">
              <button class="file-upload-browse btn btn-primary" type="button">Upload</button>
            </span>
          </div>
          @error('foto')
          <p class="text-danger">{{$message}}</p>
          @enderror
        </div>
      </div>
      <div class="">
        <div class="form-group">
          <label for="exampleTextarea1">Deskripsi</label>
          <textarea class="form-control" value="{{old('deskripsi')}}" id="exampleTextarea1" rows="5" placeholder="isi disini" name="deskripsi"></textarea>
          @error('deskripsi')
          <p class="text-danger">{{$message}}</p>
          @enderror
        </div>
      </div>      
      <a href="/jurusan" class="btn btn-light">Batal</a>
      <button type="submit" class="btn btn-primary mr-2">Simpan</button>
    </form>
  </div>
</div>    
@endsection