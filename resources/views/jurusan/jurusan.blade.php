@extends('layout.master')

@section('content')
<div class="card">
  <div class="card-body">
    <h4 class="card-title">Jurusan</h4>
    <p class="card-description">
      <a href="/jurusan/tambah" type="button" class="btn btn-sm btn-primary">
        <i class="ti-plus btn-icon-append"></i>                                                                              
      </a>
    </p>
    <div class="table-responsive">
      <table class="table">
        <thead>
          <tr>
            <th>No</th>
            <th>Nama Jurusan</th>
            <th>Deskripsi</th>
            <th>Foto</th>
            <th>Rumpun</th>
            <th>Aksi</th>
          </tr>
        </thead>
        <tbody>
          @foreach($getjurusan as $items)
          <tr>
            <td>{{$loop->iteration}}</td>
            <td>{{$items->nama}}</td>
            <td>{{$items->deskripsi}}</td>
            <th><img src="{{asset('jurusan-img').'/'.$items->foto}}" width="100"></th>
            <td>
              @if(($items->rumpun) == 'bm')
                  Bisnis management                
                @endif

                @if(($items->rumpun) == 'ti')
                  Teknologi Informatika                
                @endif
                
                @if(($items->rumpun) == 'seni')
                  Seni               
                @endif
            </td>
            <td>
              <a href="/jurusan/edit/{{$items->id_jurusan}}" type="button" class="btn btn-warning btn-sm">
                <i class="ti-pencil-alt btn-icon-append"></i>                                                                              
              </a>
              <button type="button" class="btn btn-danger btn-sm" data-toggle="modal" data-target="#hapus{{$items->id_jurusan}}">
                <i class="ti-trash btn-icon-append"></i>  
              </button>
            </td>
          </tr>
          @endforeach
        </tbody>
      </table>
    </div>
  </div>
</div>


@foreach ($getjurusan as $item)
<div class="modal fade" id="hapus{{$item->id_jurusan}}" data-backdrop="static" data-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="staticBackdropLabel">Warning!</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        Apakah jurusan {{$item->nama}} ingin di hapus?
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-light" data-dismiss="modal">Batal</button>
        <a href="jurusan/hapus/{{$item->id_jurusan}}" type="button" class="btn btn-danger">Hapus</a>
      </div>
    </div>
  </div>
</div>
@endforeach

@endsection