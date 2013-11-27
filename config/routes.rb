InvoiceCreator::Application.routes.draw do
  root to: 'invoices#new'
  resources :invoices
end
