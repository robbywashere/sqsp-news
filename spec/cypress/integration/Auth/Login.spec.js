/// <reference types="Cypress" />
context('Login', () => {
  it('should PASS authentication', () => {
    cy.visit('/users/sign_in');
    cy.get('input[type="email"]').type('test@test.com');
    cy.get('input[type="password"]').type('password');
    cy.get('input[type="submit"]').click();
    cy.findByText(/Invalid Email or password/i).should('not.exist');
  });
  it('should FAIL authentication', () => {
    cy.visit('/users/sign_in');
    cy.get('input[type="email"]').type('test@test.com');
    cy.get('input[type="password"]').type('fail-password');
    cy.get('input[type="submit"]').click();
    cy.findByText(/Invalid Email or password/i).should('be.visible');
  });
});
