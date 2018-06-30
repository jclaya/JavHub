<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "hotel".
 *
 * @property int $id
 * @property string $name
 * @property string $address
 * @property string $city
 * @property string $email
 * @property string $phone
 * @property string $website
 * @property int $job_id
 */
class Hotel extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'hotel';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['name', 'address', 'city', 'email', 'phone', 'website', 'job_id'], 'required'],
            [['job_id'], 'integer'],
            [['name', 'email', 'phone'], 'string', 'max' => 20],
            [['address'], 'string', 'max' => 50],
            [['city'], 'string', 'max' => 10],
            [['website'], 'string', 'max' => 15],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'name' => 'Name',
            'address' => 'Address',
            'city' => 'City',
            'email' => 'Email',
            'phone' => 'Phone',
            'website' => 'Website',
            'job_id' => 'Job ID',
        ];
    }
}
