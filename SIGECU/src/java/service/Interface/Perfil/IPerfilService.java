/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package service.Interface.Perfil;

import dto.preInscripcion;
import exception.BusinessException;
import java.util.List;
/**
 *
 * @author Dell
 */
public interface IPerfilService {
     public List<preInscripcion> listaDatosPerfil() throws BusinessException;
}
