package service;

import entity.ChiTietSanPham;
import jakarta.persistence.EntityManager;
import jakarta.persistence.TypedQuery;
import utility.HibernateUtil;

import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

public class ChiTietSanPhamService {

    public List<ChiTietSanPham> getAll() {
        EntityManager em = HibernateUtil.createEntityManager();

        String jqpl = "select c from ChiTietSanPham c ";
        TypedQuery<ChiTietSanPham> query = em.createQuery(jqpl, ChiTietSanPham.class);
        List<ChiTietSanPham> list = query.getResultList();
        em.close();
        return list;
    }

    public static void main(String[] args) {
        new ChiTietSanPhamService().getAll().forEach(System.out::println);
    }

    public void create(ChiTietSanPham chiTietSanPham) {
        EntityManager em = HibernateUtil.createEntityManager();

        try {
            em.getTransaction().begin();
            em.persist(chiTietSanPham);
            em.getTransaction().commit();
        } catch (Exception e) {
            e.printStackTrace();
            em.getTransaction().rollback();
        } finally {
            em.close();
        }
    }

    public ChiTietSanPham getById(UUID id) {
        EntityManager em = HibernateUtil.createEntityManager();
        ChiTietSanPham chiTietSanPham = em.find(ChiTietSanPham.class, id);
        em.close();
        return chiTietSanPham;
    }

    public void delete(UUID id) {
        EntityManager em = HibernateUtil.createEntityManager();
        try {
            em.getTransaction().begin();
            ChiTietSanPham chiTietSanPham = getById(id);
            em.remove(chiTietSanPham);
            em.getTransaction().commit();
        } catch (Exception e) {
            e.printStackTrace();
            em.getTransaction().rollback();
        } finally {
            em.close();
        }
    }
}
