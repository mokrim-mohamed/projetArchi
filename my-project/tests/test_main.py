import unittest
from app import app
class BasicTests(unittest.TestCase):
    def test_sum_valid(self):
        response = self.app.get('/sum?a=5&b=3')
        self.assertEqual(response.status_code, 200)
        self.assertEqual(response.json, {"a": 5.0, "b": 3.0, "sum": 8.0})
    # Test de la route /sum avec des paramètres manquants
    def test_sum_missing_params(self):
        response = self.app.get('/sum?a=5')
        self.assertEqual(response.status_code, 400)
        self.assertIn('error', response.json)
    # Test de la route /subtract avec des paramètres valides
    def test_subtract_valid(self):
        response = self.app.get('/subtract?a=5&b=3')
        self.assertEqual(response.status_code, 200)
        self.assertEqual(response.json, {"a": 5.0, "b": 3.0, "difference": 2.0})
    # Test de la route /subtract avec des paramètres manquants
    def test_subtract_missing_params(self):
        response = self.app.get('/subtract?a=5')
        self.assertEqual(response.status_code, 400)
        self.assertIn('error', response.json)
if __name__ == "__main__":
    unittest.main()