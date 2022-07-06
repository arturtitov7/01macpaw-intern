<?php

namespace App\Http\Controllers;

use App\Models\Hazardous;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class HazardousController extends Controller
{
    /**
     * @var string
     */
    public string $nasa_url = 'https://api.nasa.gov/neo/rest/v1/feed';

    /**
     * @var string
     */
    public string $api_key = 'O1jCcyTb3QTyS0qabDXczYcyLZmpFgwkbvSRMyZG';

    /**
     * @return JsonResponse
     */
    public function index (): JsonResponse
    {

        $hazardous = Hazardous::where('is_hazardous', '=', '1')->get();

        return response()->json($hazardous);
    }

    /**
     * @param Request $request
     * @return JsonResponse
     */
    public function fastest (Request $request): JsonResponse
    {

        $validator = Validator::make($request->all(), [
            'hazardous' => 'boolean'
        ]);

        if (!$validator->fails()) {
            $is_hazardous = $request->has('hazardous') ? $request->get('hazardous') : false;
            $hazardous = Hazardous::where('is_hazardous', '=', (bool)$is_hazardous)->orderBy('speed', 'DESC')->get();

            return response()->json($hazardous);
        }

        return response()->json($validator->errors()->messages(),412);
    }

    /**
     *
     */
    public function nasa () {
        $insert         = [];
        $this->nasa_url .= '?start_date='.date('Y-m-d',strtotime('- 3 days'));
        $this->nasa_url .= '&end_date='.date('Y-m-d');
        $this->nasa_url .= '&api_key='.$this->api_key;
        $data_nasa      = file_get_contents($this->nasa_url);
        $results        = json_decode($data_nasa,true);

        if(isset($results['near_earth_objects']) && is_array($results['near_earth_objects'])) {
            foreach ($results['near_earth_objects'] as $key => $result) {
                foreach ($result as $value) {
                    $insert[] = [
                        'date'          => $key,
                        'referenced'    => $value['neo_reference_id'],
                        'name'          => $value['name'],
                        'speed'         => $value['estimated_diameter']['kilometers']['estimated_diameter_max'],
                        'is_hazardous'  => $value['is_potentially_hazardous_asteroid'],
                        'created_at'    => now(),
                        'updated_at'    => now(),
                    ];
                }
            }

            Hazardous::insert($insert);
        }
    }
}
