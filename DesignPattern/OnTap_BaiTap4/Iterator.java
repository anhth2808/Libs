/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package OnTap_BaiTap4;

/**
 *
 * @author Hoang Anh
 */
public abstract class Iterator {
    public abstract Object First();
    public abstract Object Next();
    public abstract Boolean isDone();
    public abstract Object CurrentItem();
}
