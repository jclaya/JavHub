<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "ticket".
 *
 * @property int $id
 * @property string $comment
 * @property string $date
 * @property int $user_id
 */
class Ticket extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'ticket';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['comment', 'user_id'], 'required'],
            [['date'], 'safe'],
            [['user_id'], 'integer'],
            [['comment'], 'string', 'max' => 200],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'comment' => 'Comment',
            'date' => 'Date',
            'user_id' => 'User ID',
        ];
    }
}
