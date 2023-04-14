using Haru.AppData;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace Haru.Pages
{
    /// <summary>
    /// Interaction logic for PageCatalog.xaml
    /// </summary>
    public partial class PageCatalog : Page
    {
        List<Product> _product = new List<Product>();

        public PageCatalog()
        {
            InitializeComponent();

            _product = ConnectDB.tradeEntities.Product.ToList();

            ListProducts.ItemsSource = ConnectDB.tradeEntities.Product.ToList();

            List<Product> sorting = new List<Product>();
            sorting.Add(new Product() { ProductName = "Все диапазоны" });
            sorting.Add(new Product() { ProductName = "0-9.99%" });
            sorting.Add(new Product() { ProductName = "10-14,99%" });
            sorting.Add(new Product() { ProductName = "15% и более" });
            cmbSorting.ItemsSource = sorting;
            cmbSorting.SelectedIndex = 0;

            List<Product> filtering = new List<Product>();
            filtering.Add(new Product() { ProductName = "Сортировка" });
            filtering.Add(new Product() { ProductName = "По возрастанию" });
            filtering.Add(new Product() { ProductName = "По убыванию" });
            cmbFiltering.ItemsSource = filtering;
            cmbFiltering.SelectedIndex = 0;

            UpdateList();
        }

        public void UpdateList()
        {
            if(cmbSorting.SelectedItem != null)
            {
                if((cmbSorting.SelectedItem as Product).ProductName == "0-9.99%")
                {
                    _product = _product.Where(p => p.ProductDiscountAmount < 10).ToList();
                }
                else if((cmbSorting.SelectedItem as Product).ProductName == "10-14,99%") {
                    _product = _product.Where(p => p.ProductDiscountAmount < 15 && p.ProductDiscountAmount >= 10).ToList();
                }
                else if((cmbSorting.SelectedItem as Product).ProductName == "Все диапазоны")
                {
                    _product = ConnectDB.tradeEntities.Product.ToList();
                }
            }

            if(cmbFiltering.SelectedItem != null)
            {
                if((cmbFiltering.SelectedItem as Product).ProductName == "По возрастанию")
                {
                    _product = _product.OrderBy(p => p.ProductName).ToList();
                }
                else if((cmbFiltering.SelectedItem as Product).ProductName == "По убыванию")
                {
                    _product = _product.OrderByDescending(p => p.ProductName).ToList();
                }
                else if ((cmbFiltering.SelectedItem as Product).ProductName == "Сортировка")
                {
                    _product = ConnectDB.tradeEntities.Product.ToList();
                }
            }

            if(tboxSearch.Text != "")
            {
                _product = _product.Where(p => p.ProductName.ToLower().Contains(tboxSearch.Text.ToLower())).ToList();
            }
            else
            {
                _product = _product.ToList();
            }

            ListProducts.ItemsSource = _product;
        }

        private void cmbSorting_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            _product = ConnectDB.tradeEntities.Product.ToList();
            UpdateList();
        }

        private void cmbFiltering_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            _product = ConnectDB.tradeEntities.Product.ToList();
            UpdateList();
        }

        private void tboxSearch_TextChanged(object sender, TextChangedEventArgs e)
        {
            _product = ConnectDB.tradeEntities.Product.ToList();
            UpdateList();
        }
    }
}
