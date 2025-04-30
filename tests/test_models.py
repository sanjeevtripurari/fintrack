from app import app, db, Transaction
from datetime import datetime

def test_transaction_model():
    with app.app_context():
        # Create a test transaction
        transaction = Transaction(
            description="Test Transaction",
            category="Test",
            amount=100.00
        )
        
        # Test the model attributes
        assert transaction.description == "Test Transaction"
        assert transaction.category == "Test"
        assert transaction.amount == 100.00
        assert isinstance(transaction.date, datetime)

def test_transaction_creation():
    """Test basic transaction creation"""
    transaction = Transaction(
        description="Test Transaction",
        category="Test",
        amount=100.00
    )
    
    assert transaction.description == "Test Transaction"
    assert transaction.category == "Test"
    assert transaction.amount == 100.00
    assert isinstance(transaction.date, datetime)

def test_transaction_income():
    """Test income transaction"""
    transaction = Transaction(
        description="Salary",
        category="Income",
        amount=50000.00
    )
    
    assert transaction.amount > 0
    assert transaction.category == "Income"

def test_transaction_expense():
    """Test expense transaction"""
    transaction = Transaction(
        description="Groceries",
        category="Food",
        amount=-2000.00
    )
    
    assert transaction.amount < 0
    assert transaction.category == "Food"

def test_transaction_date_default():
    """Test that date is automatically set"""
    transaction = Transaction(
        description="Test",
        category="Test",
        amount=100.00
    )
    
    assert transaction.date is not None
    assert isinstance(transaction.date, datetime) 