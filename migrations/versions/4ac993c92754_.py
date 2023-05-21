"""empty message

Revision ID: 4ac993c92754
Revises: 
Create Date: 2023-05-20 12:49:29.794745

"""
from alembic import op
import sqlalchemy as sa


# revision identifiers, used by Alembic.
revision = '4ac993c92754'
down_revision = None
branch_labels = None
depends_on = None


def upgrade():
    # ### commands auto generated by Alembic - please adjust! ###
    op.create_table('country',
    sa.Column('id', sa.Integer(), nullable=False),
    sa.Column('name', sa.String(length=50), nullable=True),
    sa.Column('cca', sa.String(length=25), nullable=False),
    sa.Column('currency_code', sa.String(length=25), nullable=False),
    sa.Column('currency', sa.String(length=50), nullable=False),
    sa.Column('capital', sa.String(length=50), nullable=False),
    sa.Column('region', sa.String(length=60), nullable=False),
    sa.Column('subregion', sa.String(length=100), nullable=False),
    sa.Column('area', sa.BigInteger(), nullable=False),
    sa.Column('map_url', sa.String(length=300), nullable=False),
    sa.Column('population', sa.BigInteger(), nullable=False),
    sa.Column('flag_url', sa.String(length=300), nullable=False),
    sa.Column('created_at', sa.String(length=300), nullable=False),
    sa.Column('updated_at', sa.String(length=300), nullable=False),
    sa.PrimaryKeyConstraint('id')
    )
    op.create_table('country_neighbour',
    sa.Column('id', sa.Integer(), nullable=False),
    sa.Column('name', sa.String(length=50), nullable=True),
    sa.Column('cca', sa.String(length=25), nullable=False),
    sa.Column('currency_code', sa.String(length=25), nullable=False),
    sa.Column('currency', sa.String(length=50), nullable=False),
    sa.Column('capital', sa.String(length=50), nullable=False),
    sa.PrimaryKeyConstraint('id')
    )
    # ### end Alembic commands ###


def downgrade():
    # ### commands auto generated by Alembic - please adjust! ###
    op.drop_table('country_neighbour')
    op.drop_table('country')
    # ### end Alembic commands ###
