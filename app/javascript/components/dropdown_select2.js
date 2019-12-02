import 'select2';
import 'select2/dist/css/select2.css';
import '@ttskch/select2-bootstrap4-theme/dist/select2-bootstrap4.css';

const initSelect2 = () => {
  $('.select2').select2(
    {
      theme: 'bootstrap4'
    });
};

export { initSelect2 };
