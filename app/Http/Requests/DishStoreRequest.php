<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class DishStoreRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     */
    public function authorize(): bool
    {
        // return false;
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array<string, \Illuminate\Contracts\Validation\ValidationRule|array<mixed>|string>
     */
    public function rules(): array
    {
        if(request()->isMethod('post')) {
            return [
                'name' => 'required|string|max:258',
                'description' => 'required|string',
                'price' => 'required|numeric',
                'img' => 'nullable|image|mimes:jpeg,png,jpg,gif,svg|max:2048'
            ];
        } else {
            return [
                'name' => 'required|string|max:258',
                'description' => 'required|string',
                'price' => 'required|numeric',
                'img' => 'nullable|image|mimes:jpeg,png,jpg,gif,svg|max:2048'
            ];
        }
    }

    public function message()
    {
        if(request()->isMethod('post')) {
            return [
                'name.required' => 'Name is required!',
                'description.required' => 'Description is required!',
                'price.required' => 'Price is required!',
                'img.required' => 'Image is required'
            ];
        } else {
            return [
                'name.required' => 'Name is required!',
                'description.required' => 'Description is required!',
                'price.required' => 'Price is required!',
                'img.required' => 'Image is required'
            ];
        }
    }
}
