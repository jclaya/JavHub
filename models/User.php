<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "user".
 *
 * @property int $id
 * @property int $type
 * @property string $email
 * @property string $pass
 * @property string $name
 * @property string $lname
 * @property string $phone
 * @property string $resume
 */
class User extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'user';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['id', 'email', 'pass', 'name', 'lname', 'phone', 'resume'], 'required'],
            [['id', 'type'], 'integer'],
            [['email', 'pass', 'name', 'lname'], 'string', 'max' => 20],
            [['phone'], 'string', 'max' => 15],
            [['resume'], 'string', 'max' => 100],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'type' => 'Type',
            'email' => 'Email',
            'pass' => 'Pass',
            'name' => 'Name',
            'lname' => 'Lname',
            'phone' => 'Phone',
            'resume' => 'Resume',
        ];
    }
}
