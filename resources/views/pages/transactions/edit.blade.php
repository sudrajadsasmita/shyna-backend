@extends('layouts.default')

@section('content')
<div class="card">
    <div class="card-header">
        <strong>
            Ubah Tansaksi
        </strong>
        <small>{{$item->uuid}}</small>
    </div>
    <div class="card-body card-block">
        <form action="{{ route('transactions.update', $item->id) }}" method="POST">
            @method('PUT')
            @csrf
            <div class="from-group">
                <label for="form-control-label">Nama Pemesan</label>
                <input type="text" name="name" value="{{old('name') ? old('name'):$item->name}}" class="form-control @error('name')
                    is-invalid
                @enderror">
                @error('name') <div class="text-muted">{{$messaage}}</div>@enderror
            </div>
            <div class="from-group">
                <label for="form-control-label">Email</label>
                <input type="email" name="email" value="{{old('email') ? old('email'):$item->email}}" class="form-control @error('email')
                    is-invalid
                @enderror">
                @error('type') <div class="text-muted">{{$messaage}}</div>@enderror
            </div>
            <div class="from-group">
                <label for="form-control-label">No Hp</label>
                <input type="number" name="number" value="{{old('number') ? old('number'):$item->number}}" class="form-control @error('number')
                    is-invalid
                @enderror">
                @error('number') <div class="text-muted">{{$messaage}}</div>@enderror
            </div>
            <div class="from-group">
                <label for="form-control-label">Alamat Pemesan</label>
                <input type="text" name="address" value="{{old('address') ? old('address'):$item->address}}" class="form-control @error('address')
                    is-invalid
                @enderror">
                @error('address') <div class="text-muted">{{$messaage}}</div>@enderror
            </div>
            <div class="form-group mt-3">
                <button class="btn btn-primary btn-block" type="submit">
                    Update Tansaksi
                </button>
            </div>
        </form>
    </div>
</div>
@endsection
