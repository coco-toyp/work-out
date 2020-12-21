require 'rails_helper'

describe User do
  before do
    @user = FactoryBot.build(:user)
  end
  describe 'ユーザー新規登録' do
    context '新規登録がうまくいくとき' do
      it "nameとemail、passwordとpassword_confirmationが存在すれば新規登録できる" do
        expect(@user).to be_valid
      end
    end

    context '新規登録がうまくいかないとき' do
      it "nameが空だと新規登録できない" do
        @user.name = ""
        @user.valid?
        expect(@user.errors.full_messages).to include("Name can't be blank")
      end
      it "emailが空だと新規登録できない" do
        @user.email = ""
        @user.valid?
        expect(@user.errors.full_messages).to include("Email can't be blank")
      end
      it "passwordが空だと新規登録できない" do
        @user.password = ""
        @user.valid?
        expect(@user.errors.full_messages).to include("Password can't be blank")
      end
      it "passwordがあってもpasswore_confirmationが空だと新規登録できない" do
        @user.password = "kkkk1111"
        @user.password_confirmation = ""
        @user.valid?
        expect(@user.errors.full_messages).to include("Password confirmation doesn't match Password")
      end
    end
  end
end
