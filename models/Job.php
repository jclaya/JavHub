<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "job".
 *
 * @property int $id
 * @property string $title
 * @property string $position
 * @property string $description
 * @property string $date
 * @property int $user_id
 */
class Job extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'job';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['title', 'position', 'description', 'user_id'], 'required'],
            [['date'], 'safe'],
            [['user_id'], 'integer'],
            [['title', 'position'], 'string', 'max' => 20],
            [['description'], 'string', 'max' => 100],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'title' => 'Title',
            'position' => 'Position',
            'description' => 'Description',
            'date' => 'Date',
            'user_id' => 'User ID',
        ];
    }
}
