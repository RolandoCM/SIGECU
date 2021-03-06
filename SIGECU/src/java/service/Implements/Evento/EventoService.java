/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package service.Implements.Evento;

import dao.Implements.Evento.EventoDAO;
import dao.Interface.Evento.IEventoDAO;
import dto.Ciudad;
import dto.Evento;
import dto.IdentificadoresEvento;
import dto.Lugar;
import exception.BusinessException;
import java.util.ArrayList;
import java.util.List;
import service.Interface.Evento.IEventoService;

/**
 *
 * @author rolando
 */
public class EventoService implements IEventoService{

    @Override
    public void crearEvento(Evento evento) throws BusinessException {
        try
        {
            IEventoDAO eventoDAO = new EventoDAO();
            eventoDAO.crearEvento(evento);
        }
        catch (BusinessException e)
        {
            throw e;
        }
        catch(Exception ex)
        {
            ex.printStackTrace();
            BusinessException be = new BusinessException();
            be.setIdException("201");
            be.setMensaje("Error en la capa de negocio, conexion en crear Evento");
            throw be;
        } 
    }

    @Override
    public List<Evento> listarEventoConfirmado() throws BusinessException {
         
        try
        {
            IEventoDAO eventoDAO = new EventoDAO();
            List<Evento> eventosConfirmados = new ArrayList<>();
            eventosConfirmados = eventoDAO.listarEventoCondirmado();         
            return eventosConfirmados; 
        }
        catch (BusinessException e) {
            throw e;
	}
        catch (Exception ex)
        {
            ex.printStackTrace();
            BusinessException be = new BusinessException();
            be.setIdException("201");
            be.setMensaje("Error en la capa de negocio, conexion a listar eventos");
            throw be;
        }
    }

    @Override
    public void actualizarEventoConfirmado(Evento evento) throws BusinessException{
        try
        {
            IEventoDAO eventoDAO = new EventoDAO();
            eventoDAO.actualizarEventoConfirmado(evento);
        }catch(BusinessException e)
        {
            throw e;
        }catch(Exception e)
        {
            e.printStackTrace();
            BusinessException be = new BusinessException();
            be.setIdException("201");
            be.setMensaje("Erroe es  la capa de negocio, conexion a actualizar Evento");
            throw be;
        }
    }

    @Override
    public String cancelarEventoConfirmado(int idEvento) throws BusinessException{
        try
        {
            EventoDAO eventoDAO = new EventoDAO();
            String estado = eventoDAO.cancelarEventoConfirmado(idEvento);
            return estado;
        }catch(BusinessException e)
        {
            throw e;
        }catch(Exception e)
        {
            e.printStackTrace();
            BusinessException be = new BusinessException();
            be.setIdException("201");
            be.setMensaje("Error en la capa de negocio, conecion a cancelar Evento Confirmado");
            throw be;
        }
    }

    @Override
    public String confirmarEvento(int idEvento) throws BusinessException{
        try
        {
            EventoDAO eventoDAO = new EventoDAO();
            String estado = eventoDAO.confirmarEvento(idEvento);
            return estado;
        }catch(BusinessException e)
        {
            throw e;
        }catch(Exception e)
        {
            e.printStackTrace();
            BusinessException be = new BusinessException();
            be.setIdException("201");
            be.setMensaje("Error en la capa de negocio, conecion a cancelar Evento Confirmado");
            throw be;
        }
    }
    
    @Override
    public Evento detallesEvento(int idEvento) throws BusinessException{
        try
        {
            IEventoDAO eventoDAO = new EventoDAO();
            Evento evento = new Evento();
            evento = eventoDAO.detallesEvento(idEvento);
            
            return evento;
        }catch(BusinessException e)
        {
            throw e;
        }catch(Exception e)
        {
            e.printStackTrace();
            BusinessException be = new BusinessException();
            be.setIdException("201");
            be.setMensaje("Erroe eb la capa de negocio, conexion a detalles de Evento");
            throw be;
            
        }
    }

    @Override
    public List<List<IdentificadoresEvento>> consultaDatosCrearEvento() throws BusinessException {
        List<List<IdentificadoresEvento>> datosParaEvento = new ArrayList<>();
        try
        {
            IEventoDAO eventoDAO = new EventoDAO();
            datosParaEvento = eventoDAO.consultaDatosCrearEvento();
            return datosParaEvento;
            
        }catch (BusinessException e)
        {
            throw e;
        }
        catch(Exception e)
        {
            e.printStackTrace();
            BusinessException be = new BusinessException();
            be.setIdException("201");
            be.setMensaje("Error en la capa de negocio, conexion a datos para crear evento");
            throw be;
        }
    }

    /*Metodo para listar eventos Publicos para los interesados*/
    @Override
    public List<Evento> listarEventosPublicos() throws BusinessException {
        try
        {
            IEventoDAO eventoDAO = new EventoDAO();
            List<Evento> eventosPublicos = new ArrayList<>();
            eventosPublicos = eventoDAO.listarEventosPublicos();         
            return eventosPublicos; 
        }
        catch (BusinessException e) {
            throw e;
	}
        catch (Exception ex)
        {
            ex.printStackTrace();
            BusinessException be = new BusinessException();
            be.setIdException("201");
            be.setMensaje("Error en la capa de negocio, conexion a listar eventos");
            throw be;
        }
    } //fin del metodo listarEventosPublicos

    @Override
    public Evento buscarEvento(int idEvento) throws BusinessException {
        IEventoDAO eventoDAO = new EventoDAO();
        Evento evento = eventoDAO.buscarEventoDAO(idEvento);
        return evento;
    }

    @Override
    public List<Ciudad> cargarCiudades(int idPais) throws BusinessException {
       
        EventoDAO evento = new EventoDAO();
        List<Ciudad> listaCiudad = evento.cargarCiudades(idPais);
        
        return listaCiudad;
    }

    @Override
    public List<Lugar> cargarLugares(int idCiudad) throws BusinessException {
        
        EventoDAO evento = new EventoDAO();
        List<Lugar> listaLugar = evento.cargarLugares(idCiudad);
        
        return listaLugar;
        
    }
    
}
