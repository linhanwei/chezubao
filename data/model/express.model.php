<?php/** * 快递公司管理 * * */defined('InSystem') or exit('Access Invalid!');class expressModel extends Model{    public function __construct(){        parent::__construct('express');    }    /**     * 新增     *     * @param array $insert 数据     * @param string $table 表名     */    public function addData($insert) {        $result = $this->table('express')->insert($insert);        return $result;    }    /**     * 列表     *     * @param array $condition 条件     * @param string $field 字段     * @param string $group 分组     * @param string $order 排序     * @param int $limit 限制     * @param int $page 分页     * @param boolean $lock 是否锁定     * @return array 二维数组     */    public function getList($condition, $field = '*', $group = '',$order = '', $limit = 0, $page = 0, $lock = false, $count = 0) {        return $this->table('express')->field($field)->where($condition)->group($group)->order($order)->limit($limit)->page($page, $count)->lock($lock)->select();    }    /**     * 获取全部列表     */    public function getAllList($condition, $field = '*'){        return $this->table('express')->field($field)->where($condition)->select();    }    /**     * 更新数据     *     * @param array $update 更新数据     * @param array $condition 条件     * @return boolean     */    public function editData($update, $condition) {        $result = $this->table('express')->where($condition)->update($update);        return $result;    }    /**     * 获取单条信息     *     * @param array $condition     * @param string $field     * @return array     */    public function getInfo($condition, $field = '*') {        $info = $this->table('express')->field($field)->where($condition)->find();        return $info;    }    /**     * 获得某字段的和     *     * @param array $condition     * @param string $field     * @return boolean     */    public function getSum($condition, $field) {        return $this->table('express')->where($condition)->sum($field);    }    /**     * 获得数量     *     * @param array $condition     * @param string $field     * @return int     */    public function getCount($condition) {        return $this->table('express')->where($condition)->count();    }    /**     * 删除信息     *     * @param array $condition     * @return boolean     */    public function delData($condition) {        return $this->table('express')->where($condition)->delete();    }}