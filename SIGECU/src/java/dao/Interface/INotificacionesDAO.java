/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao.Interface;

import dto.Evento;
import exception.BusinessException;
import java.util.List;

/**
 *
 * @author rolando
 */
public interface INotificacionesDAO {
    public List<Evento> notificarEmailComercial() throws BusinessException;
}
